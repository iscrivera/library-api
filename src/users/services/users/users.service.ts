import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { User } from 'src/users/entities/user.entity';
import { Repository } from 'typeorm';

@Injectable()
export class UsersService {
    constructor(
        @InjectRepository(User) private usersRepo: Repository<User>,
      ) {}

      findAll(){
          return this.usersRepo.find();
      }

      async create(body: any) {
        const user = await this.findByEmail(body.ds_email);
        if(null != user && user.id_user > 0){
            return {error :'User already exists. Login please!'};
        }
        const newUser = this.usersRepo.create(body);
        return this.usersRepo.save(newUser);
      }

      async login(body: any) {
        const user = await this.findByEmail(body.ds_email);
        if(null != user && user.id_user > 0){
            if(body.ds_password == user.ds_password){
              return user;
            }
        }
        return {error :'Invalid credentials!'};
      }
    

      async findByEmail(email:string){
          return await this.usersRepo.findOne(
            { where:
                { ds_email: email }
            }
        );
      }
}
