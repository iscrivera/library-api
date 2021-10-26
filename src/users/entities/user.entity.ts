import { ApiProperty } from "@nestjs/swagger";
import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity("cat_user")
export class User {
  @PrimaryGeneratedColumn()
  id_user: number;

  @Column()
  @ApiProperty()
  ds_name: string;
  @Column()
  @ApiProperty()
  ds_last_name: string;
  @Column()
  @ApiProperty()
  ds_phone: string;
  @Column()
  @ApiProperty()
  ds_email: string;
  @Column()
  @ApiProperty()
  ds_password: string;

}