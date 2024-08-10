# rs-stm32f1xx_template





## [Using install scripts](https://probe.rs/docs/getting-started/installation/#using-install-scripts)

### [Linux, macOS](https://probe.rs/docs/getting-started/installation/#linux%2C-macos)

```bash
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/probe-rs/probe-rs/releases/latest/download/probe-rs-tools-installer.sh | sh
```

### [Windows](https://probe.rs/docs/getting-started/installation/#windows)

```ps
irm https://github.com/probe-rs/probe-rs/releases/latest/download/probe-rs-tools-installer.ps1 | iex
```



cargo-flash

```shell
cargo flash --release --example <your_example>
```



```shell


#在您的货运项目目录中，致电
cargo flash --release --chip <chip_name>

#不知道你的目标是否得到支持
#chip，它叫什么名字？
probe-rs chip list

#您可以像往常一样使用以下命令运行示例
cargo flash --release --example <your_example>

#手动指定应使用的选项
cargo flash --release --chip nRF52840_xxAA --target thumbv6m-none-eabi --example gpio_hal_blinky

#使用非内置文件中的自定义芯片定义
cargo flash --release --chip-description-path nRF52840_xxAA.yaml --target thumbv6m-none-eabi --example gpio_hal_blinky
```

