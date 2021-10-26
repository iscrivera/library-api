import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Book } from 'src/books/entities/book.entity';
import { Repository } from 'typeorm';

@Injectable()
export class BooksService {

    constructor(
        @InjectRepository(Book) private booksRepo: Repository<Book>,
      ) {}

      findAll(){
          return this.booksRepo.find();
      }

      findOne(id:number){
          return this.booksRepo.findOne(id);
      }
}
