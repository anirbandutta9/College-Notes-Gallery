
 <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index">COLLEGE-NOTES-GALLERY</a>
            </div>
            
            <ul class="nav navbar-right top-nav">
                <?php if($_SESSION['role'] !== 'admin') { ?> <li><a href="./uploadnote.php">UPLOAD</a></li> <?php } ?>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <?php echo $_SESSION['name']; ?> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="./userprofile.php?section=<?php echo $_SESSION['username']; ?>"><i class="fa fa-fw fa-user"></i> Account</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="../logout.php"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>

<div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="index" class="active"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                <?php if($_SESSION['role'] == 'admin') {
                    ?>
                   <li>
                         <a href="javascript:;" data-toggle="collapse" data-target="#user"><i class="fa fa-fw fa-users"></i> Users <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="user" class="collapse">
                            <li>
                                <a href="./users.php">View All Users</a>
                            </li>
                            
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="collapse" data-target="#posts"><i class="fa fa-fw fa-file-text"></i> My Account <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="posts" class="collapse">
                            <li>
                                <a href="./viewprofile.php?name=<?php echo $_SESSION['username']; ?>"> View Profile</a>
                            </li>
                            <li>
                                <a href="./userprofile.php?section=<?php echo $_SESSION['username']; ?>">Edit Profile</a>
                            </li>
                        </ul>
                        </li>
                            
                    <?php } else { ?>

                    <li>
                         <a href="javascript:;" data-toggle="collapse" data-target="#user"><i class="fa fa-fw fa-users"></i> My Notes <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="user" class="collapse">
                            <li>
                                <a href="./notes.php">View All Notes</a>
                            </li>
                            <li>
                                <a href="./uploadnote.php">Upload Note</a>
                            </li>
                            
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="collapse" data-target="#posts"><i class="fa fa-fw fa-file-text"></i> My Account <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="posts" class="collapse">
                            <li>
                                <a href="./viewprofile.php?name=<?php echo $_SESSION['username']; ?>"> View Profile</a>
                            </li>
                            <li>
                                <a href="./userprofile.php?section=<?php echo $_SESSION['username']; ?>">Edit Profile</a>
                            </li>
                        </ul>
                        </li>

<?php } ?>
                </ul>
            </div>
        </nav>