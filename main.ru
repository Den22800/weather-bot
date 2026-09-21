import asyncio
from aiogram import Bot, Dispatcher, types
from aiogram.filters import Command

API_TOKEN = '8694359881:AAHpC94jzrfn1AbB1gqeMWW60VWXNlSlGsQ'

bot = Bot(token=API_TOKEN)
dp = Dispatcher()

@dp.message(Command("start"))
async def cmd_start(message: types.Message):
    await message.answer("Привет! Я погодный бот. Напиши /help, чтобы узнать команды.")

@dp.message(Command("help"))
async def cmd_help(message: types.Message):
    await message.answer("/start — запустить бота\n/weather — получить погоду (скоро будет)")

async def main():
    await dp.start_polling(bot)

if __name__ == "__main__":
    asyncio.run(main())

