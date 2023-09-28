import React from "react";
import InstrumentForm from "@/components/InstrumentForm";
import NavbarCustom from "@/components/NavbarCustom";

const AddInstrumento = () => {
  return (
    <>
      <NavbarCustom />
      <div className="bg-gray-100 flex justify-center py-4">
        <InstrumentForm />
      </div>
    </>
  );
};

export default AddInstrumento;
