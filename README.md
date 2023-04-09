<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->

<a name="readme-top"></a>

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/AndreFra96/quizsolver">
    <img src="assets/images/logo.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">Quiz Solver</h3>

  <p align="center">
    A quiz solver based on Google ML Kit and GPT-3.
    <!-- <br />
    <a href="https://github.com/AndreFra96/quizsolver"><strong>Explore the docs »</strong></a> -->
    <br />
    <br />
    <!-- <a href="https://github.com/AndreFra96/quizsolver">View Demo</a>
    · -->
    <a href="https://github.com/AndreFra96/quizsolver/issues">Report Bug</a>
    ·
    <a href="https://github.com/AndreFra96/quizsolver/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->

## About The Project

Quiz solver comes from the curiosity to test the capabilities of GPT-3 model facing a real world problem.

It uses the device camera to take a picture of a question with related possible answers. Then, it reads all the text in the image with Google ML Kit Text Recognition and sends it to Openai GPT-3 chat model which in turn extracts the question with the possible answers and finally tries to guess which one of them is the right one.

**This is neither bad or good by itself, the use you make of it makes it so**

Ready for execution on iOS (simulator and physical devices), configuration needed for Android.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

- [![Flutter][flutter.dev]][flutter-url]
- [![ML-Kit][mlkit]][mlkit-url]
- [![OpenAI][openai]][openai-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

To run the project you need flutter to be installed on your machine: follow the "Get started" manual on [flutter.dev](https://docs.flutter.dev/get-started/install)

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/AndreFra96/quizsolver.git
   ```
2. Install required packages
   ```sh
   flutter pub get
   ```
3. Get your OpenAI API Key at [openai.com](https://platform.openai.com/)
4. Update the 'openaiApiKey' in `lib/config.dart` with your OpenAI API Key
5. Run `flutter run`

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->

## Usage

The usage in extremely simple, just point the camera to the quiz and click the photo button. In a few seconds a popup will show up with the recognized question and the correct answer.

<img src="assets/images/quizsolverExample.gif" alt="Example" width="200" >

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->

<!-- ## Roadmap

- [ ] Feature 1
- [ ] Feature 2
- [ ] Feature 3
  - [ ] Nested Feature

See the [open issues](https://github.com/AndreFra96/quizsolver/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p> -->

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->

## Contact

Andrea Brioschi - brioschiandrea@tiscali.it

Project Link: [https://github.com/AndreFra96/quizsolver](https://github.com/AndreFra96/quizsolver)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->

## Acknowledgments

- []()
- []()
- []()

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/AndreFra96/quizsolver.svg?style=for-the-badge
[contributors-url]: https://github.com/AndreFra96/quizsolver/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/AndreFra96/quizsolver.svg?style=for-the-badge
[forks-url]: https://github.com/AndreFra96/quizsolver/network/members
[stars-shield]: https://img.shields.io/github/stars/AndreFra96/quizsolver.svg?style=for-the-badge
[stars-url]: https://github.com/AndreFra96/quizsolver/stargazers
[issues-shield]: https://img.shields.io/github/issues/AndreFra96/quizsolver.svg?style=for-the-badge
[issues-url]: https://github.com/AndreFra96/quizsolver/issues
[license-shield]: https://img.shields.io/github/license/AndreFra96/quizsolver.svg?style=for-the-badge
[license-url]: https://github.com/AndreFra96/quizsolver/blob/main/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/linkedin_username
[product-screenshot]: assets/images/quizsolverExample.gif
[next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[next-url]: https://nextjs.org/
[react.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[react-url]: https://reactjs.org/
[vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[vue-url]: https://vuejs.org/
[angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[angular-url]: https://angular.io/
[svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[svelte-url]: https://svelte.dev/
[laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[laravel-url]: https://laravel.com
[bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[bootstrap-url]: https://getbootstrap.com
[jquery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[jquery-url]: https://jquery.com
[flutter.dev]: https://img.shields.io/badge/Flutter-47d1fc?style=for-the-badge&logo=flutter&logoColor=white
[flutter-url]: https://flutter.dev
[mlkit]: https://img.shields.io/badge/MLKIT-4787F4?style=for-the-badge&logo=google&logoColor=white
[mlkit-url]: https://developers.google.com/ml-kit
[openai]: https://img.shields.io/badge/OpenAI%20GPT3-74AA9C?style=for-the-badge&logo=openai&logoColor=white
[openai-url]: https://openai.com/product
