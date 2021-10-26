import { Body, Controller, Post } from '@nestjs/common';
import { Loan } from 'src/loans/entities/loan.entity';
import { LoansService } from 'src/loans/services/loans/loans.service';

@Controller('api/loans')
export class LoansController {

    constructor(
        private loansService: LoansService
    ) { }

    @Post()
    create(@Body() body: Loan) {
        return this.loansService.create(body);
    }

}
