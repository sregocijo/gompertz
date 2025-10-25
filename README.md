# 📈 Ethanol Fermentation Curve Fitter (Shiny App)

A lightweight Shiny application for visualizing ethanol yield over time during aerobic fermentation, fitting the Gompertz growth model, and extracting key kinetic parameters to inform anaerobic fermentation optimization.

Hosted at:[shinyapps.io](https://sara.shinyapps.io/ProjectGompyCalc/)

## 🔬 Overview

This app is designed for fermentation scientists and process engineers who need a quick, interactive way to:

- Upload time-series ethanol yield data from aerobic fermentations
- Visualize fermentation curves
- Fit the Gompertz equation to the data
- Extract the three core parameters:
  - **A**: Maximum ethanol yield (g/L)
  - **μ**: Maximum specific production rate (1/h)
  - **λ**: Lag time (h)

These parameters can be used to benchmark fermentation performance and inform anaerobic process design or optimization.

## 🧪 Use Case

While the data input is from fermentations, the extracted Gompertz parameters are intended to guide:

- Anaerobic fermentation optimization strategies
- Comparative strain performance
- Process modeling and simulation

## 🚀 Features

- 📊 Interactive curve plotting with ggplot2
- ⚙️ Nonlinear least squares fitting of the Gompertz model

## 📈 Gompertz Equation

The model used is:

\[
Y(t) = A \cdot \exp\left(-\exp\left(\frac{\mu \cdot e}{A}(\lambda - t) + 1\right)\right)
\]

Where:

- \( Y(t) \): Ethanol yield at time \( t \)
- \( A \): Maximum yield
- \( \mu \): Maximum specific production rate
- \( \lambda \): Lag time
- \( e \): Euler’s number
