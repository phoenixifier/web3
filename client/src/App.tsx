import React from "react";
import Footer from "./components/Footer";
import Hero from "./components/Hero";
import Navbar from "./components/Navbar";
import Transactions from "./components/Transactions";

const App: React.FC = () => {
	return (
		<div className="min-h-screen">
			<div className="gradient-bg-welcome">
				<Navbar />
				<Hero />
			</div>
			<Transactions />
			<Footer />
		</div>
	);
};

export default App;
