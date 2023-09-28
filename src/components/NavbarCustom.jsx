"use client";
import Container from "react-bootstrap/Container";
import Nav from "react-bootstrap/Nav";
import Navbar from "react-bootstrap/Navbar";
import NavDropdown from "react-bootstrap/NavDropdown";

function NavbarCustom() {
  return (
    <Navbar expand="lg" className="bg-body-tertiary">
      <Container>
        <Navbar.Brand href="/">Electronica UNLaM</Navbar.Brand>
        <Navbar.Toggle aria-controls="basic-navbar-nav" />
        <Navbar.Collapse id="basic-navbar-nav">
          <Nav className="ms-auto">
            <Nav.Link href="/">Inicio</Nav.Link>
            <NavDropdown title="Base de datos" id="basic-nav-dropdown-bdd">
              <NavDropdown.Item href="/proyectores">Proyectores</NavDropdown.Item>
              <NavDropdown.Item href="/notebooks">Notebooks</NavDropdown.Item>
              <NavDropdown.Item href="/instrumentos">
                Instrumentos
              </NavDropdown.Item>
              <NavDropdown.Item href="/libros">Libros</NavDropdown.Item>
            </NavDropdown>
            <NavDropdown title="Agregar" id="basic-nav-dropdown-add">
              <NavDropdown.Item href="/proyectores/add">Proyector</NavDropdown.Item>
              <NavDropdown.Item href="/notebooks/add">Notebook</NavDropdown.Item>
              <NavDropdown.Item href="/instrumentos/add">
                Instrumento
              </NavDropdown.Item>
              <NavDropdown.Item href="/libros/add">Libro</NavDropdown.Item>
            </NavDropdown>
            <Nav.Link href="/descargas">Descargas</Nav.Link>
          </Nav>
        </Navbar.Collapse>
      </Container>
    </Navbar>
  );
}

export default NavbarCustom;
