class packet;
  // Data members
  rand bit [3:0] src, dest;
  rand bit [7:0] data;

  // Constructor
  function new();
    this.src = 0;
    this.dest = 0;
    this.data = 0;
  endfunction

  // Custom method to copy (shallow copy)
  function packet copy();
    copy = new();
    copy.src = src;
    copy.dest = dest;
    copy.data = data;
  endfunction

  // Polymorphic display
  virtual function void display();
    $display($time, " Parent class values: src = %0d, dest = %0d, data = %0d", src, dest, data);
  endfunction
endclass

// Extended child class
class packet1 extends packet;
  // Override display
  function void display();
    $display($time, " Child class values: src = %0d, dest = %0d, data = %0d", src, dest, data);
  endfunction
  
  // Override the copy method
  function packet1 copy();
    $display($time, " After copying!!");
    copy = new();
    copy.src = src;
    copy.dest = dest;
    copy.data = data;
  endfunction
endclass

// Test module
module tester;
  packet p_base;
  packet1 p1, p2;
  
  initial begin
    p1 = new();
    p_base = p1; // Upcasting (parent class reference pointing to child object)
    repeat(10) begin
      // Randomization success can be checked with both IF-ELSE or even assert
      if (p1.randomize()) begin
        $display($time, " Randomizing the data");
        p_base.display(); // Should call child class version because of virtual
        p2 = p1.copy;
        p2.display();
      end 
      else
        $display("Randomization failed!");
    end

    p1 = null;
    p2 = null;
  end
endmodule
