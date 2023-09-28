import React from "react";
import LibroForm from "@/components/LibroForm";
import NavbarCustom from "@/components/NavbarCustom";

const AddLibro = () => {
  return (
    <>
      <NavbarCustom />
      <div className="bg-gray-100 flex justify-center py-4">
        <LibroForm />
      </div>
    </>
  );
};

export default AddLibro;
