<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>

<head>
<jsp:include page="../../css/styles.jsp" />
<title>Edit Book</title>
</head><body>
	<div class="container-fluid">

		<jsp:include page="../admin-header.jsp"></jsp:include>
		<jsp:include page="book-management-title.jsp" />

		<div class="jumbotron">
			<a href="javascript:history.back()" class="btn btn-primary"><i
				class="fas fa-arrow-left"></i> Back</a>
			<h2 class="text-info mt-5">Edit Book</h2>

			<!-- FORM -->
			<form action="edit-book" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label class="my-1 mr-2" for="category">Category</label> <select
						class="custom-select my-1 mr-sm-2" name="category" id="category">

						<c:forEach items="${LIST_CATEGORIES}" var="category">
							<option value="${category.categoryId }"
								<c:if test = "${BOOK.category.categoryId == category.categoryId}">selected</c:if>>
								${category.name }</option>
						</c:forEach>

					</select>
				</div>
				<input type="hidden" name="book-id" value="${BOOK.bookId }">

				<div class="form-group">
					<label for="title">Title</label> <input type="text" name="title"
						class="form-control" id="title" placeholder="Enter Title"
						minlength="2" maxlength="100" required value="${BOOK.title }">
				</div>
				<div class="form-group">
					<label for="author">Author</label> <input type="text" name="author"
						class="form-control" id="author" placeholder="Enter Author"
						minlength="2" maxlength="100" required value="${BOOK.author }">
				</div>
				<div class="form-group">
					<label for="isbn">ISBN</label> <input type="text"
						class="form-control" id="isbn" name="isbn"
						placeholder="Enter ISBN" minlength="2" maxlength="100" required
						value="${BOOK.isbn }">
				</div>
				<div class="form-group">
					<label for="publish-date">Publish Date</label> <input
						class="form-control" type="date" name="publish-date"
						placeholder="dd-mm-yyyy" value="${BOOK.publishDate }"
						min="1997-01-01" max="2021-12-31">
				</div>
				<div class="form-group">
					<label for="image">Image</label> <input type="file"
						class="form-control" id="image-file" name="image" accept="image/*">
					<img id="image-preview"
						src="data:image/png; base64, ${BOOK.imageBase64 }"
						alt="${BOOK.title }" height="200" />
				</div>
				<div class="form-group">
					<label for="price">Price</label> <input type="number"
						class="form-control" id="price" name="price"
						placeholder="Enter Price" step="any" required
						value="${BOOK.price}">
				</div>
				<div class="form-group">
					<label for="description">Description</label>
					<textarea class="form-control" id="description" name="description"
						rows="20">${BOOK.description }</textarea>
				</div>

				<div class="d-flex justify-content-center">
					<button type="submit" class="btn btn-success m-1">Submit</button>
					<a href="." class="btn btn-warning m-1">Cancel</a>
				</div>
			</form>
			<c:if test="${ERROR_MESSAGE != null}">
				<div class="alert alert-danger mt-3" role="alert">
					<c:out value="${ERROR_MESSAGE}"></c:out>
				</div>
			</c:if>
		</div>
		<jsp:include page="../admin-footer.jsp"></jsp:include>
	</div>
	<!-- END LIST -->

	<!-- FOOTER & SCRIPTS -->
	<script>
		const imageFile = document.getElementById("image-file");
		const imagePreview = document.getElementById("image-preview");

		imageFile.onchange = (evt) => {
			  const [file] = imageFile.files
			  if (file) {
			    imagePreview.src = URL.createObjectURL(file)
			  }
		}
	
	</script>
</body>
</html>