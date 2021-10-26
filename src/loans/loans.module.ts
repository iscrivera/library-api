import { Module } from '@nestjs/common';
import { LoansService } from './services/loans/loans.service';
import { LoansController } from './controllers/loans/loans.controller';
import { Loan } from './entities/loan.entity';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
  imports: [
    TypeOrmModule.forFeature([Loan])
  ],
  providers: [LoansService],
  controllers: [LoansController]
})
export class LoansModule {}
