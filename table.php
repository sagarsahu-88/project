<?php  
//include 'conn.php';
 $connect = mysqli_connect("localhost", "root", "", "page");  
 $query ="SELECT * FROM page1 ORDER BY ID DESC";  
 $result = mysqli_query($connect, $query); 
 //header('location:navigation.php'); 
 ?>  
 <!DOCTYPE html>  
 <html>  
      <head>  
           <title>Datatable</title>  
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
           <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>  
           <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>            
           <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />  
      </head>  
      <body>  
           <br /><br />  
           <div class="container">  
                <h2 align="center">Datatables</h2>  
                <br />  
                <div class="table-responsive">  
                     <table id="employee_data" class="table table-striped table-bordered">  
                          <thead>  
                               <tr>  
                                    <td>Name</td> 
                                    <td>Email</td> 
                                    <td>Mobile</td>                                     
                                    <td>Gender</td>  
                                    <td>DOB</td>
                                    <td>Address</td>   
                                    <td>Course</td>
                                    <td>Facilities</td> 


                               </tr>  
                          </thead>  
                          <?php  
                          while($row = mysqli_fetch_array($result))  
                          {  
                               echo '  
                               <tr>  
                               <td>'.$row["first_name"].'</td>
                               <td>'.$row["email"].'</td>
                               <td>'.$row["mobile"].'</td>
                               <td>'.$row["gender"].'</td>
                               <td>'.$row["birthday"].'</td>
                               <td>'.$row["address"].'</td>
                               <td>'.$row["course"].'</td>
                               <td>'.$row["facilities"].'</td>
                               </tr>  
                               '; 
                              
                          }
                              
                            
                          ?>  
                     </table>  
                </div>  
           </div>  
      </body>  
 </html>  
 <script>  
 $(document).ready(function(){  
      $('#employee_data').DataTable();  
 });  
 </script>