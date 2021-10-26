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
            return "El usuario ya existe, inicia sesión.";
        }
        const newUser = this.usersRepo.create(body);
        return this.usersRepo.save(newUser);
      }
    

      async findByEmail(email:string){
          return await this.usersRepo.findOne(
            { where:
                { ds_email: email }
            }
        );
      }
}
