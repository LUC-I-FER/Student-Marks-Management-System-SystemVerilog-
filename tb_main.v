module student_marks_management;

  int student_marks[];
  
  // Variables for calculations
  int total_marks;
  real average_marks;
  int highest_mark;

  initial begin
    $display("=== Student Marks Management System ===\n");

    // 2. Allocate memory for initially 5 students
    student_marks = new[5];

    // 3. Populate the array with marks out of 100
    student_marks = '{85, 92, 78, 65, 88};

    // Display initial marks using a foreach loop
    $display("--- Initial Marks List ---");
    foreach (student_marks[i]) begin
      $display("Student %0d: %0d", i+1, student_marks[i]);
    end

    // 4. Calculate Total, Average, and find Highest Mark
    total_marks = 0;
    highest_mark = 0;
    
    foreach (student_marks[i]) begin
      total_marks += student_marks[i];
      if (student_marks[i] > highest_mark) begin
        highest_mark = student_marks[i];
      end
    end
    
    average_marks = real'(total_marks) / student_marks.size();
    
    $display("\n--- Class Statistics ---");
    $display("Total Students : %0d", student_marks.size());
    $display("Class Average  : %0.2f", average_marks);
    $display("Highest Mark   : %0d", highest_mark);

    // 5. Dynamic Resizing: A new student joins the class
    $display("\n--- Late Admission: Adding New Student ---");
    // Resize to 6, passing the old array to preserve existing data
    student_marks = new[6](student_marks); 
    
    // Assign marks to the new student (index 5)
    student_marks[5] = 95;
    
    $display("New Class Size: %0d", student_marks.size());
    $display("Student 6 Marks: %0d", student_marks[5]);

    // 6. Memory Management: Free up the array at the end
    student_marks.delete();
    $display("\nSystem memory cleared. Current array size: %0d", student_marks.size());
    
  end

endmodule
