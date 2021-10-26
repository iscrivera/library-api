import { ApiProperty } from '@nestjs/swagger';
import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity("k_loan")
export class Loan {
  @PrimaryGeneratedColumn()
  @ApiProperty()
  id_loan: number;

  @Column()
  @ApiProperty()
  id_user: number;
  @Column()
  @ApiProperty()
  id_book: number;
  @Column()
  @ApiProperty()
  nm_status: number;

}