import { ApiProperty } from '@nestjs/swagger';
import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity("cat_book")
export class Book {
  @PrimaryGeneratedColumn()
  @ApiProperty()
  id_book: number;

  @Column()
  @ApiProperty()
  ds_title: string;
  @Column()
  @ApiProperty()
  ds_author: string;
  @Column()
  @ApiProperty()
  tx_synopsis: string;
  @Column()
  @ApiProperty()
  ds_img: string;

}