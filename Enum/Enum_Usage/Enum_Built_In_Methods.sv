module example_enum;
  typedef enum {red,green,blue}color_t;
  color_t c;

  initial begin
    c=red;

    $display("Name:%s",c.name());
    $display("Next:%s",c.next()c.name());
    $display("Previous:%s",c.prev()c.name());
    $display("First:%s",c.first()c.name());
    $display("Last%s",c.last()c.name());
    $display("Total Elemnts:%s",c.num());

  end
endmodule
