import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Loan } from 'src/loans/entities/loan.entity';
import { Repository } from 'typeorm';

@Injectable()
export class LoansService {

    constructor(
        @InjectRepository(Loan) private loansRepo: Repository<Loan>,
    ) { }

    async create(body: Loan) {
        const loans = await this.loansRepo.find(
            {
                where:
                {
                    id_user: body.id_user,
                    nm_status: 1
                }
            }
        );
        if (null != loans && loans.length >= 3) {
            return {error:"Exceeded Limit. Just can to have 3 loans at same time."};
        }

        const newLoan = new Loan();
        newLoan.id_book = body.id_book;
        newLoan.id_user = body.id_user;
        newLoan.nm_status = 1;
        return this.loansRepo.save(newLoan);
    }

}
