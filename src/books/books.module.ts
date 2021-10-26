import { Module } from '@nestjs/common';
import { BooksService } from './services/books/books.service';
import { BooksController } from './controllers/books/books.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Book } from './entities/book.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([Book])
  ],
  providers: [BooksService],
  controllers: [BooksController]
})
export class BooksModule {}
