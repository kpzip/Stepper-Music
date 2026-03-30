/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2026 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define ENABLE_6_Pin GPIO_PIN_13
#define ENABLE_6_GPIO_Port GPIOC
#define ENABLE_7_Pin GPIO_PIN_14
#define ENABLE_7_GPIO_Port GPIOC
#define ENABLE_8_Pin GPIO_PIN_15
#define ENABLE_8_GPIO_Port GPIOC
#define DIR_1_Pin GPIO_PIN_0
#define DIR_1_GPIO_Port GPIOC
#define DIR_2_Pin GPIO_PIN_1
#define DIR_2_GPIO_Port GPIOC
#define DIR_3_Pin GPIO_PIN_2
#define DIR_3_GPIO_Port GPIOC
#define DIR_4_Pin GPIO_PIN_3
#define DIR_4_GPIO_Port GPIOC
#define DIR_5_Pin GPIO_PIN_4
#define DIR_5_GPIO_Port GPIOC
#define DIR_6_Pin GPIO_PIN_5
#define DIR_6_GPIO_Port GPIOC
#define MS1_Pin GPIO_PIN_0
#define MS1_GPIO_Port GPIOB
#define MS2_Pin GPIO_PIN_1
#define MS2_GPIO_Port GPIOB
#define MS3_Pin GPIO_PIN_2
#define MS3_GPIO_Port GPIOB
#define DIR_7_Pin GPIO_PIN_6
#define DIR_7_GPIO_Port GPIOC
#define DIR_8_Pin GPIO_PIN_7
#define DIR_8_GPIO_Port GPIOC
#define ENABLE_1_Pin GPIO_PIN_8
#define ENABLE_1_GPIO_Port GPIOC
#define ENABLE_2_Pin GPIO_PIN_9
#define ENABLE_2_GPIO_Port GPIOC
#define ENABLE_3_Pin GPIO_PIN_10
#define ENABLE_3_GPIO_Port GPIOC
#define ENABLE_4_Pin GPIO_PIN_11
#define ENABLE_4_GPIO_Port GPIOC
#define ENABLE_5_Pin GPIO_PIN_12
#define ENABLE_5_GPIO_Port GPIOC
#define RESET_Pin GPIO_PIN_4
#define RESET_GPIO_Port GPIOB
#define SLEEP_Pin GPIO_PIN_5
#define SLEEP_GPIO_Port GPIOB

/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
