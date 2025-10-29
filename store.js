const saveData = (event) => {
    event.preventDefault();

    let name1 = document.getElementById('name').value;
    let gmail1 = document.getElementById('gmail').value;
    let password1 = document.getElementById('password').value;
    let mobile1 = document.getElementById('mob').value;
    let dob1 = document.getElementById('dob').value;
    let college1 = document.getElementById('college').value;
    let add1 = document.getElementById('add').value;

    localStorage.setItem("name", name1);
    localStorage.setItem("gmail", gmail1);
    localStorage.setItem("password", password1);
    localStorage.setItem("mobile", mobile1);
    localStorage.setItem("dob", dob1);
    localStorage.setItem("college", college1);
    localStorage.setItem("add", add1);

    alert("Data Saved Successfully!");

    window.location.href = "login.html";
};
