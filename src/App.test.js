import { render, screen } from "@testing-library/react";
import App from "./App";

test("renders learn docker link", () => {
  render(<App />);
  const linkElement = screen.getByText(/learn docker/i);
  expect(linkElement).toBeInTheDocument();
});
