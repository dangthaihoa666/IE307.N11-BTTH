using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Text;
using SQLite;

namespace Lab4
{
    public class BookingDatabase
    {
        private readonly SQLiteConnection db;
        public BookingDatabase()
        {
            string folder = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            db = new SQLiteConnection(System.IO.Path.Combine(folder, "BookingDatabase.db3"));
            db.CreateTable<City>();
            db.CreateTable<Hotel>();       
        }

        //city
        public bool CreateCity(City city)
        {
            try
            {
                db.Insert(city);
                return true;
            }
            catch (SQLiteException ex)
            {
                Debug.WriteLine("Exception: " + ex);
                return false;
                throw;
            }
        }
        public List<City> ReadCities()
        {
            try
            {
                return db.Table<City>().ToList();
            }
            catch (SQLiteException ex)
            {
                Debug.WriteLine("Exception: " + ex);
                return null;
                throw;
            }
        }
        public bool UpdateCity(City city)
        {
            try
            {
                db.Update(city);
                return true;
            }
            catch (SQLiteException ex)
            {
                Debug.WriteLine("Exception: " + ex);
                return false;
                throw;
            }
        }
        public bool DeleteCity(City city)
        {
            try
            {
                db.Delete(city);
                return true;
            }
            catch (SQLiteException ex)
            {
                Debug.WriteLine("Exception: " + ex);
                return false;
                throw;
            }
        }

        // hotel
        public bool CreateHotel(Hotel hotel)
        {
            try
            {
                db.Insert(hotel);
                return true;
            }
            catch (SQLiteException ex)
            {
                Debug.WriteLine("Exception: " + ex);
                return false;
                throw;
            }
        }

        public List<Hotel> ReadHotels()
        {
            try
            {
                return db.Table<Hotel>().ToList();
            }
            catch (SQLiteException ex)
            {
                Debug.WriteLine("Exception: " + ex);
                return null;
                throw;
            }
        }

        public bool UpdateHotel(Hotel hotel)
        {
            try
            {
                db.Update(hotel);
                return true;
            }
            catch (SQLiteException ex)
            {
                Debug.WriteLine("Exception: " + ex);
                return false;
                throw;
            }
        }
        public bool DeleteHotel(Hotel hotel)
        {
            try
            {
                db.Delete(hotel);
                return true;
            }
            catch (SQLiteException ex)
            {
                Debug.WriteLine("Exception: " + ex);
                return false;
                throw;
            }
        }

        public List<Hotel> GetHotelsByCityID(int CityID)
        {
            try
            {
                return db.Query<Hotel>("SELECT * FROM Hotel WHERE CITYID = " + CityID.ToString());
            }
            catch (SQLiteException ex)
            {
                Debug.WriteLine("Exception: " + ex);
                return null;
                throw;
            }
        }
    }

}
