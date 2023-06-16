<?php
include 'partials/header.php';

// fetch categories from database
$query = "SELECT * FROM categories";
$categories = mysqli_query($connection, $query);

// get back form data if  form was invalid
$title = $_SESSION['add-post-data']['title'] ?? null;
$body = $_SESSION['add-post-data']['body'] ?? null;

// delete form data session
unset($_SESSION['add-post-data']);
?>


<section class="form-section add-post-conatiner">
    <div class="container form-section-container">
        <h2>Add Post</h2>
        <?php if (isset($_SESSION['add-post'])) : ?>
        <div class="alert-message error">
            <p>
                <?= $_SESSION['add-post'];
                    unset($_SESSION['add-post']);
                    ?>
            </p>
        </div>
        <?php endif ?>
        <form action="<?= ROOT_URL ?>admin/add-post-logic.php" enctype="multipart/form-data" method="POST">
            <input type="text" name="title" placeholder="Title" />
            <select name="category">
                <?php while ($category = mysqli_fetch_assoc($categories)) : ?>
                <option value="<?= $category['id'] ?>"><?= $category['title'] ?></option>
                <?php endwhile ?>
            </select>
            <textarea rows="10" name="body" placeholder="Body"></textarea>
            <?php if (isset($_SESSION['user_is_admin'])) : ?>
            <div class="form-control inline">
                <input type="checkbox" name="is_featured" value="1" id="is-featured" unchecked>
                <label for="is-featured">Featured</label>
            </div>
            <?php endif ?>
            <div class="form-control">
                <label for="thumbnail">Add Thumbnail</label>
                <input type="file" name="thumbnail" id="thumbnail">
            </div>
            <button type="submit" name="submit" class="btn">Add Post</button>
        </form>
    </div>
</section>


<?php
include '../partials/footer.php';
?>