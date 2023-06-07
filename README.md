## Getting Started

This repository includes files with plain SQL that can be used to recreate a database:

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database. **Important note: this file might include queries that make changes in the database (e.g., remove records). Use them responsibly!**

<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 Paws and Claws Clinic ](#-paws-and-claws-clinic-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
    - [Run tests](#run-tests)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [❓ FAQ ](#-faq-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 Paws and Claws Clinic <a name="about-project"></a>

**The Paws and Claws Vet Clinic Database** is a PostgreSQL system designed for managing essential information about pet patients in a veterinary clinic. The database stores and organizes data such as pet names, birth dates, weight, neutering status, and escape attempts, providing the clinic staff with a convenient way to track and access this crucial information. It also offers querying capabilities, which help in analysis, reporting, and decision-making, as a result enhancing the efficiency of the clinic's operations and the quality of care provided to the pets.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>
<details>
<summary>Query Language</summary>
  <ul>
    <li><a href="https://www.w3schools.com/sql/">SQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>


- **Robust Data Management**: The database offers a systematic way to manage information about the clinic's animal patients, making data retrieval and tracking more efficient.
- **Comprehensive Querying Capabilities**: SQL is used to interact with the database, providing powerful querying options for extracting and manipulating data according to various needs.
- **Scalability**: PostgreSQL, as an open-source relational database, offers high scalability, making the database capable of handling an increasing amount of data as the clinic grows.
- **Data Integrity**: PostgreSQL provides strong data consistency and supports ACID (Atomicity, Consistency, Isolation, Durability) properties, ensuring the reliability and integrity of data.
- **Flexibility**: The database schema can be easily adjusted to accommodate changing requirements, demonstrating the system's adaptability.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- PostgreSQL installed on your machine. You can download it from the [official website](https://www.postgresql.org/download/).


### Setup

Clone this repository to your desired folder:

```sh
  cd your-folder
  git clone https://github.com/Alejandroq12/vet-clinic.git
```

### Install

Navigate into your project directory and set up your database:

```sh
  cd your-project
  psql -U postgres -f schema.sql
```

### Usage

To interact with the database, open PostgreSQL and connect to the database:

Connect to database
```sh
  psql -U postgres -d vet_clinic
```

### Run tests

To run tests, run the following command (functionality will be added in the future):

```sh
  // command to run tests
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Julio Quezada**

- GitHub: [Alejandroq12](https://github.com/Alejandroq12)
- Twitter: [@JulioAle54](https://twitter.com/JulioAle54)
- LinkedIn: [Julio Quezada](https://www.linkedin.com/in/quezadajulio/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

> Describe 1 - 3 features you will add to the project.

- [ ] **[new_feature_1]**
- [ ] **[new_feature_2]**
- [ ] **[new_feature_3]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

> Write a message to encourage readers to support your project

If you like this project...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

> Give credit to everyone who inspired your codebase.

I would like to thank...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ <a name="faq"></a>

> Add at least 2 questions new developers would ask when they decide to use your project.

- **[Question_1]**

  - [Answer_1]

- **[Question_2]**

  - [Answer_2]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._

<p align="right">(<a href="#readme-top">back to top</a>)</p>
