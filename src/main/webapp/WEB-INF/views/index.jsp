<%@ include file="layout/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bolton Garden Nursery</title>

<style>
div.gallery {
	margin: 5px;
	border: 1px solid #ccc;
	float: left;
	width: 325px;
}

div.gallery:hover {
	border: 1px solid rgb(133, 163, 180);
}

div.gallery img {
	width: 100%;
	height: auto;
}

div.desc {
	padding: 15px;
	text-align: center;
}

h3.ty-mainbox-title {
	display: flex;
	flex-direction: row;
}

h3.ty-mainbox-title:before, h3.ty-mainbox-title:after {
	content: "";
	flex: 1 1;
	border-bottom: 1px solid;
	margin: auto;
}

h3.ty-mainbox-title:before {
	margin-right: 5%
}

h3.ty-mainbox-title:after {
	margin-left: 5%
}

html, body {
	width: 100%;
	height: 100%;
	margin: 0px;
	padding: 0px;
	overflow-x: hidden;
}
</style>

</head>
<body>
	<div class="row">
		<div class="col-12">
			<div class="card text-white bg-info mb-3" style="width: 100rem;">
				<div class="card-header" style="width: 100rem;">
					<marquee behavior="scroll" direction="left">
						<span class="header-usp-bar__title">100% growth and
							flowering guarantee &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> <span
							class="header-usp-bar__title">Fresh from the nursery
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<span class="header-usp-bar__title">Amazing organic range</span>
					</marquee>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-1"></div>
		<div class="col-10 text-justify">
			<p>Bolton's Nursery is a traditional, family-run plants nursery
				based in Bolton. Established over 60 years, we pride ourselves on
				supplying quality plants direct from the grower to your door. We
				grow the majority of our plants on site, delivering to most mainland
				UK addresses, usually within 5-7 days of ordering. We supply plants
				to a wide range of customers including keen amateur gardeners,
				garden designers, professional landscapers, schools and local
				authorities. Our extensive range includes alpine plants, azaleas,
				bamboo, bare root, climbers, conifers, ferns, fruit trees, grasses,
				heathers, herb plants, Japanese maple trees, perennials, roses,
				shrubs, topiary and trees. When buying plants from us, you can also
				search by condition, such as sun or shade or acid or alkaline soil;
				purpose including categories such as fragrant plants, groundcover
				plants, hedging plants and plants for gifts; location such as
				rockery garden plants and plants for containers; and season of
				interest. So whether you're looking for a winter berrying shrub or a
				summer flowering climber, we've got you covered.</p>
		</div>
		<div class="col-1"></div>
	</div>

	<div class="row">
		<div class="col-4"></div>
		<div class="col-4">
			<h3 class="ty-mainbox-title">Our Exclusive Products</h3>
		</div>
		<div class="col-4"></div>
	</div>

	<div class="row">
		<div class="col-1"></div>
		<div class="col-3">
			<div class="gallery">
				<img
					src="https://www.jacksonsnurseries.co.uk/images/thumbnails/330/190/detailed/9/alpines-plants.jpg"
					alt="Alpine plants" width="600" height="400">
				<div class="desc">Alpine Plants</div>
			</div>
		</div>

		<div class="col-3">
			<div class="gallery">
				<img
					src="https://www.jacksonsnurseries.co.uk/images/thumbnails/330/190/detailed/8/Azaleas.jpg"
					alt="Azaleas plants" width="600" height="400">
				<div class="desc">Azaleas Plants</div>
			</div>
		</div>

		<div class="col-3">
			<div class="gallery">
				<img
					src="https://www.jacksonsnurseries.co.uk/images/thumbnails/330/190/detailed/7/bamboo-plants.jpg"
					alt="Buy Bamboo Online" width="600" height="400">
				<div class="desc">Bamboo Plants</div>
			</div>
		</div>

		<div class="col-2"></div>
	</div>

	<div class="row">
		<div class="col-1"></div>
		<div class="col-3">
			<div class="gallery">
				<img
					src="https://www.jacksonsnurseries.co.uk/images/thumbnails/330/190/detailed/7/climbers-plants.jpg"
					alt="Buy Climbers Online" width="600" height="400">
				<div class="desc">Climbing Plants</div>
			</div>
		</div>

		<div class="col-3">
			<div class="gallery">
				<img
					src="https://www.jacksonsnurseries.co.uk/images/thumbnails/330/190/detailed/7/conifers-plants.jpg"
					alt="Buy Conifers Online" width="600" height="400">
				<div class="desc">Conifer Plants</div>
			</div>
		</div>

		<div class="col-3">
			<div class="gallery">
				<img
					src="https://www.jacksonsnurseries.co.uk/images/thumbnails/330/190/detailed/7/ferns-plants.jpg"
					alt="Buy Ferns Online" width="600" height="400">
				<div class="desc">Fern Plants</div>
			</div>
		</div>
		`
	</div>
</body>
</html>