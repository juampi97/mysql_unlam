import React from "react";
import NotebookForm from "@/components/NotebookForm";
import NavbarCustom from "@/components/NavbarCustom";

const AddInstrumento = () => {
  return (
    <>
      <NavbarCustom />
      <div className="bg-gray-100 flex justify-center py-4">
        <NotebookForm />
      </div>
    </>
  );
};

export default AddInstrumento;
