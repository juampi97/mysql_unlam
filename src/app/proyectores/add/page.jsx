import React from "react";
import ProyectorForm from "@/components/ProyectorForm";
import NavbarCustom from "@/components/NavbarCustom";

const AddInstrumento = () => {
  return (
    <>
      <NavbarCustom />
      <div className="bg-gray-100 flex justify-center py-4">
        <ProyectorForm />
      </div>
    </>
  );
};

export default AddInstrumento;
