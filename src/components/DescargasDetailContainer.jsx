"use client";
import React from "react";
import { useState, useEffect } from "react";
import axios from "axios";
import Container from "react-bootstrap/Container";
import Row from "react-bootstrap/Row";
import Button from "react-bootstrap/Button";
import Spinner from "react-bootstrap/Spinner";
import * as XLSX from "xlsx";
import Col from "react-bootstrap/Col";
import Form from "react-bootstrap/Form";
import Table from "react-bootstrap/Table";

const DescargasDetailContainer = () => {
  const [proyectores, setProyectores] = useState([]);
  const [notebooks, setNotebooks] = useState([]);
  const [instrumentos, setInstrumentos] = useState([]);
  const [libros, setLibros] = useState([]);
  const [ProyectoresLoaded, setProyectoresLoaded] = useState(false);
  const [NotebooksLoaded, setNotebooksLoaded] = useState(false);
  const [InstrumentsLoaded, setInstrumentsLoaded] = useState(false);
  const [LibrosLoaded, setLibrosLoaded] = useState(false);

  useEffect(() => {
    const fetchAllProyectores = async () => {
      try {
        const res = await axios.get(
          "http://localhost:3000/api/proyectores"
        );
        setProyectores(res.data);
        setProyectoresLoaded(true);
      } catch (err) {
        console.log(err);
      }
    };
    fetchAllProyectores();
  }, []);

  useEffect(() => {
    const fetchAllInstrumentos = async () => {
      try {
        const res = await axios.get("http://localhost:3000/api/notebooks");
        setNotebooks(res.data);
        setNotebooksLoaded(true);
      } catch (err) {
        console.log(err);
      }
    };
    fetchAllInstrumentos();
  }, []);

  useEffect(() => {
    const fetchAllInstrumentos = async () => {
      try {
        const res = await axios.get("http://localhost:3000/api/instrumentos");
        setInstrumentos(res.data);
        setInstrumentsLoaded(true);
      } catch (err) {
        console.log(err);
      }
    };
    fetchAllInstrumentos();
  }, []);

  useEffect(() => {
    const fetchAllLibros = async () => {
      try {
        const res = await axios.get("http://localhost:3000/api/libros");
        setLibros(res.data);
        setLibrosLoaded(true);
      } catch (err) {
        console.log(err);
      }
    };
    fetchAllLibros();
  }, []);

  if (!ProyectoresLoaded || !NotebooksLoaded || !InstrumentsLoaded || !LibrosLoaded) {
    return (
      <>
        <Container className="mt-5 mb-5">
          <Row className="justify-content-center">
            <Spinner animation="border" variant="success" />
          </Row>
        </Container>
      </>
    );
  }

  const handleDownload = () => {
    const libro = XLSX.utils.book_new();
    const hojaProyectores = XLSX.utils.json_to_sheet(proyectores);
    XLSX.utils.book_append_sheet(libro, hojaProyectores, "Proyectores");
    const hojaNotebooks = XLSX.utils.json_to_sheet(notebooks);
    XLSX.utils.book_append_sheet(libro, hojaNotebooks, "Notebooks");
    const hojaInstrumentos = XLSX.utils.json_to_sheet(instrumentos);
    XLSX.utils.book_append_sheet(libro, hojaInstrumentos, "Instrumentos");
    const hojaLibros = XLSX.utils.json_to_sheet(libros);
    XLSX.utils.book_append_sheet(libro, hojaLibros, "Libros");
    XLSX.writeFile(libro, "bd_laboratorio_electronica.xlsx");
  };

  return (
    <>
      <Container className="d-flex flex-row justify-content-center my-5">
          <Button variant="success" onClick={handleDownload}>
            Descargar Base de datos
          </Button>
      </Container>
    </>
  );
};

export default DescargasDetailContainer;
