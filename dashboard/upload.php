<?php include 'includes/connection.php';?>
<?php include 'includes/adminheader.php';?>




<div id="wrapper">

       <?php include 'includes/adminnav.php';?>
        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            UPLOAD NOTE
                        </h1>
                        <form role="form" action="" method="POST" enctype="multipart/form-data">


	<div class="form-group">
		<label for="post_title">Note Title</label>
		<input type="text" name="title" class="form-control" placeholder="Eg: Php Tutorial File" ">
	</div>

	<div class="form-group">
		<label for="post_tags">Note Tags</label>
		<input type="text" name="tags" class="form-control" placeholder="Eg: Php, Tutorial, Learn Php etc.." ">
	</div>

	<div class="form-group">
		<label for="post_content">Write a short Description about your note</label>
		<textarea  class="form-control" name="description" id="" cols="12" rows="6">
		</textarea>
	</div>

	 <div class="form-group">
        <label for="post_image">Select File</label>
		<input type="file" name="file"> 
     </div>

<button type="submit" name="upload" class="btn btn-primary" value="Upload Note">Upload Note</button>
<br>
<br>
</form>
</div>
</div>
</div>
</div>
</div>


<script src="js/jquery.js"></script>

    
    <script src="js/bootstrap.min.js"></script>

</body>

</html>



