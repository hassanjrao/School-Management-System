<?php
session_start();
if ($_SESSION["login_std"] == null) {
    header("location: index.php");
} else {

    include_once('include/student_navbar.php');

    ?>


    <!DOCTYPE html>

    <html lang="en">

    <head>
        <title>Student</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style14.css" type="text/css">


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">


        <style>
            .select-box {
                padding: 8px;
                border-radius: 5px;

            }
        </style>



    </head>





    <body style="overflow-x:hidden">


        <div class="container">




            <div class="tab-content">

                <div id="table" class="tab-pane fade in active">




                    <!-- ---------------- -->
                    <table class="table" style="width: 800px;">
                        <thead>
                            <tr class="success">
                                <th>Std ID.</th>
                                <th>Std Name</th>
                                <th>Username</th>
                                <th>Class</th>
                                <th>Section</th>

                            </tr>
                        </thead>


                        <tbody>


                            <?php

                                $connection = mysqli_connect("localhost", "root", "", "sms1_db");


                                $username = $_SESSION['login_std'];
                                $query = "SELECT * FROM student_tb WHERE username='$username'";
                                $query_run = mysqli_query($connection, $query);
                                if (mysqli_num_rows($query_run) == 1) {

                                    $row = mysqli_fetch_assoc($query_run);

                                    $student_id = $row["student_id"];
                                    $student_name = $row["student_name"];



                                    $class_id = $row["class_id"];

                                    

                                    $query1 = "SELECT * from class_tb where class_id='$class_id'";
                                    $query_run1 = mysqli_query($connection, $query1);

                                    $class = mysqli_fetch_assoc($query_run1);

                                    $class_name = $class["class_name"];


                                    $section_id = $row["section_id"];

                                    $query1 = "SELECT * from section where class_id='$class_id' and section_id='$section_id'";
                                    $query_run1 = mysqli_query($connection, $query1);

                                    $section = mysqli_fetch_assoc($query_run1);


                                    
                                    $section_name = $section["section_name"];



                                    ?>
                                <tr class="active">
                                    <td><?php echo  $student_id ?></td>
                                    <td><?php echo  $student_name ?></td>
                                    <td><?php echo  $username ?></td>
                                    <td><?php echo  $class_name ?></td>
                                    <td><?php echo  $section_name ?></td>


                                </tr>
                            <?php
                                }

                                ?>




                        </tbody>

                    </table>

                </div>

            </div>

        </div>

        </div>


        <!-- jQuery CDN -->
        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
        <!--  Bootstrap Js CDN -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function() {
                $('#sidebarCollapse').on('click', function() {
                    $('#sidebar').toggleClass('active');
                });
            });
        </script>

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $("#datepicker").datepicker({
                    dateFormat: 'yy-mm-dd'
                });

            })
        </script>



    </body>


    </html>
<?php
}
?>