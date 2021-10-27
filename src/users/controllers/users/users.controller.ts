import { Body, Controller, Get, Param, Post } from '@nestjs/common';
import { User } from 'src/users/entities/user.entity';
import { UsersService } from 'src/users/services/users/users.service';

@Controller('api/users')
export class UsersController {

    constructor(
        private usersService: UsersService
    ) { }

    @Get(':email')
    findByEmail(@Param('email') email: string) {
        return this.usersService.findByEmail(email);
    }

    @Post()
    create(@Body() body: User) {
        return this.usersService.create(body);
    }

    @Post('/login')
    login(@Body() body: User) {
        return this.usersService.login(body);
    }

}
