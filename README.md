![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)

<!--
# Tiny Tapeout Analog Project Template

- [Read the documentation for project](docs/info.md)

## What is Tiny Tapeout?

Tiny Tapeout is an educational project that aims to make it easier and cheaper than ever to get your digital designs manufactured on a real chip.

To learn more and get started, visit https://tinytapeout.com.
-->

# Description
LPCAS_TTGF0P3_TP1 is a low-power Folded Cascode Operational Transconductance Amplifier (OTA) designed in the GF180MCU-D process. The amplifier is optimized for low-current operation while maintaining a large input common-mode range and output swing, making it suitable for a wide variety of analog signal-processing applications.

Lab Website: https://sites.google.com/iitgn.ac.in/madhav-pathak

---

### People Involved:

| Name | Affiliation | Email |
|------|-------------|-------|

| [**Pranay Arvind Patil**](https://www.linkedin.com/in/pranay-arvind-patil/) | IIT Gandhinagar | [pranay.patil@iitgn.ac.in](mailto:pranay.patil@iitgn.ac.in) |
| [**Nithin P**](https://www.linkedin.com/in/nithin-purushothama-70664727b/) | IIT Gandhinagar | [nithinpurushothama@gmail.com](mailto:nithinpurushothama@gmail.com) |
| [**Prof. Madhav Pathak**](https://iitgn.ac.in/faculty/ee/fac-madhav) | IIT Gandhinagar | [madhav.pathak@iitgn.ac.in](mailto:madhav.pathak@iitgn.ac.in) |

---

### Circuit Diagram 

<img width="1920" height="898" alt="TTGF0P3_LPCAS_FC_OTA" src="https://github.com/user-attachments/assets/aeb6fc26-683b-4cb5-b855-a58dbbf8db5d" />

----

### Testbench Setup

1. DC, TRAN, PSRR Testbench Setup
   <img width="1920" height="898" alt="tb_TTGF0P3_LPCAS_FC_OTA_DC_PSRR_TRAN" src="https://github.com/user-attachments/assets/421510f0-5b1d-4f41-b28a-822e4c9b8218" />

2. Stability Testbench Setup
   
   <img width="1920" height="898" alt="tb_TTGF0P3_LPCAS_FC_OTA_STB" src="https://github.com/user-attachments/assets/da8995f3-3aa6-4881-9a02-6401ad4ac221" />
   
3. Monte Carlo Testbench Setup
   
   <img width="1920" height="898" alt="tb_TTGF0P3_LPCAS_FC_OTA_MC" src="https://github.com/user-attachments/assets/af6d18bc-d118-4242-ab1d-ac204d95ea24" />

---

### Results 

1. **Stability Plots**:
   
<img width="974" height="1147" alt="IEEE_STB" src="https://github.com/user-attachments/assets/a9aff87c-b539-458d-9d5e-fc5e6ac0e275" />


2. **Transient Swing**:

<img width="968" height="1033" alt="IEEE_TRAN" src="https://github.com/user-attachments/assets/6c5e8cbb-0ba8-4e54-bafb-d5e4af76f1d1" />


3. **PSRR**:
   
<img width="943" height="755" alt="IEEE_PSRR" src="https://github.com/user-attachments/assets/cd0346d2-ea47-4daa-a185-0844edfb88d8" />


4. **DC Input/output Swing in Unity Buffer Configuration**:
   
<img width="937" height="1033" alt="IEEE_DC" src="https://github.com/user-attachments/assets/01be5019-0b2d-4290-8149-c9de49692be7" />


5. **Monte Carlo Simulation(Offset)**
   
<img width="1920" height="1440" alt="offset_monte_carlo_histogram_mv" src="https://github.com/user-attachments/assets/4c4a3ecf-d432-436c-93e2-3f392e8a3fd9" />

---

### Layout
<img width="3288" height="3254" alt="image" src="https://github.com/user-attachments/assets/b8ac333e-2088-49ce-bb68-0822e6a8b3e0" />


  


<!--

## Analog projects

For specifications and instructions, see the [analog specs page](https://tinytapeout.com/specs/analog/).


## Enable GitHub actions to build the results page

- [Enabling GitHub Pages](https://tinytapeout.com/faq/#my-github-action-is-failing-on-the-pages-part)

## Resources

- [FAQ](https://tinytapeout.com/faq/)
- [Digital design lessons](https://tinytapeout.com/digital_design/)
- [Learn how semiconductors work](https://tinytapeout.com/siliwiz/)
- [Join the community](https://tinytapeout.com/discord)

-->
