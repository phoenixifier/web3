import type React from "react";
import Footer from "./components/Footer.tsx";
import Hero from "./components/Hero.tsx";
import Navbar from "./components/Navbar.tsx";
import Services from "./components/Services.tsx";
import Transactions from "./components/Transactions.tsx";

const App: React.FC = () => {
	return (
		<div className="min-h-screen">
			<div className="gradient-bg-welcome">
				<Navbar />
				<Hero />
			</div>
			<Services />
			<Transactions />
			<Footer />
		</div>
	);
};

export default App;
