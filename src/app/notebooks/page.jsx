import React from "react";
import axios from "axios";
import NotebookList from "../../components/NotebookList";
import NavbarCustom from "@/components/NavbarCustom";

const getProducts = async () => {
  const res = await axios.get("http://localhost:3000/api/notebooks");
  return res.data;
};

const ListNotebookContainer = async () => {
  const res = await getProducts();
  if (res.error) {
    return (
      <>
        <NavbarCustom />
        <div className="text-center">
          <h1>Error</h1>
        </div>
      </>
    );
  }
  return (
    <div>
      <NavbarCustom />
      <NotebookList data={res} />
    </div>
  );
};

export default ListNotebookContainer;
