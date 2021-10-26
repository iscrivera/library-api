import { Controller, Get, Param } from '@nestjs/common';
import { BooksService } from 'src/books/services/books/books.service';

@Controller('api/books')
export class BooksController {

    
  constructor(
    private booksService: BooksService
  ) {}

  @Get()
  findAll() {
    return this.booksService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: number) {
    return this.booksService.findOne(id);
  }


}
