<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin | Trainer Registration</title>
<link rel="icon" href="photo's/goldenGym1.ico"  ></head>
<body>

	<header><%@ include file="AdminHeader.jsp"%></header>
	<%@ include file="AdminSideBar.jsp"%>
	<form action="TrainerInsertServlet" method="post" class="w3-half" enctype="multipart/form-data">
		<div class="w3-animate-left w3-container" style="margin-top: 20px;">
			<div class="w3-row" align="center">
			<h1 class="w3-theme">
			<i class="fa-user-plus fa"></i>Trainer Registration
			</h1>
			</div>
			
			<div class="w3-row">
				<label class="w3-col m3"> Name </label>
				<div class="w3-col m4">
					<input required   type="text" name="firstName" id="firstName"
						value="${param.firstName}" placeholder="First Name"
						class="w3-input" />

				</div>
				<div class="w3-col s1">&emsp;</div>

				<div class="w3-col m4">
					<input required   type="text" name="lastName" value="${param.lastName}"
						id="lastName" placeholder="Last Name" class="w3-input" />
				</div>
			</div>
			<br />
			<div class="w3-row">
				<label class="w3-col m3"> Email</label>
				<div class="w3-col m9">
					<input required   type="email" name="email" id="email" value="${param.email}"
						placeholder="example@goldenGym.com" class="w3-input" />
					${msgemail}
				</div>
			</div>
			<br /> <br />
			<div class="w3-row">
				<label class="w3-col m3"> Experience</label>
				<div class="w3-col m9">
					<input required   type="number" name="experiance" min="0"  id="experience"
						value="${param.experiance}" placeholder="Experience"
						class="w3-input" />
				</div>
			</div>
			<br />
			<div class="w3-row">
				<%
					String gen = request.getParameter("gender");
					String ml = "unchecked", fml = "unchecked";
					if (gen != null && gen.equals("female"))
						fml = "checked";
					else
						ml = "checked";
				%>

				<label class="w3-col m3"> Gender </label>
				<div class="w3-col m3">
					<input required   class="  w3-radio" type="radio" name="gender" <%=ml%>
						value="male"> <label class="w3-validate">Male</label>
				</div>
				<div class="w3-col m3">
					<input required   class="w3-radio  " type="radio" name="gender" <%=fml%>
						value="female"> <label class="w3-validate">Female</label>
				</div>
				<div class="w3-col s1" style="font-size: 20px; color: red;">*</div>
			</div>
			<br />
			<div class="w3-row">
				<label class="w3-col m3"> Date of Birth </label>
				<div class="w3-col m9">
					<input required   type="date" class="w3-input" value="${param.DOB}"
						name="DOB" id="DOB" />
				</div>
			</div>
			<br />
			<div class="w3-row">
				<label class="w3-col m3"> Address </label>
				<div class="w3-col m9">
					<textarea class="w3-input" name="address" id="address"
						placeholder="Address">${param.address} </textarea>
				</div>
			</div>
			<br />

			<div class="w3-row">
				<label class="w3-col m3"> Mobile </label>
				<div class="w3-col m9">
					<input required   type="number" class="w3-input"
						placeholder="Mobile Number" name="mobile" value="${param.mobile}"
						id="mobile" />
				</div>
			</div>

			<br />
			<div class="w3-row">
				<label class="w3-col m3"> Password </label>
				<div class="w3-col m9">
					<input required   type="password" placeholder="Create Password"
						class="w3-input" name="password" value="${param.password}"
						id="password" /> ${msgpwd}
				</div>
			</div>
			<br />
			<div class="w3-row">
				<label class="w3-col m3"> Confirm-Password </label>
				<div class="w3-col m9">
					<input required   type="password" class="w3-input"
						placeholder="Confirm Password" name="confirmPassword"
						value="${param.confirmPassword}" id="confirmPassword" />
					${msgcpwd}
				</div>
			</div>
			<br />
			<div class="w3-row">
				<label class="w3-col m3"> City </label>
				<div class="w3-col m9">
					<input required   type="text" class="w3-input" name="city"
						value="${param.city}" placeholder="City" id="password" />
				</div>
			</div>
			<br />
			<div class="w3-row">
				<label class="w3-col m3"> Photo </label>
				<div class="w3-col m9">
					<input required   type="file" class="w3-input" name="photo" value="${param.photo}"
						placeholder="Photo" id="password" />
						${msgfile}
				</div>
			</div>
			
			<br /> <br />
			<div class="w3-row">
				<label class="w3-col m3"> &nbsp;</label>
				<div class="w3-col m3">
					<input required   type="submit" class="w3-theme w3-round-xlarge w3-btn" />
				</div>
				<div class="w3-col m3">
					<input required   type="reset" class="w3-round-xlarge w3-red w3-btn" />
				</div>

			</div>
			<br />
		</div>
	</form>
	<div class="w3-quarter">&nbsp;</div>

</body>
</html>