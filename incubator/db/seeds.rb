Project.delete_all

Project.create(
  id: 1,
  name: "3D Printer",
  started_at: Time.now - 1.day,
	cost: 10.5,
  body:
  %Q{#3D Printer
			This is beatiful piece of tests}
)
