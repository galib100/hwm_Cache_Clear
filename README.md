
# HWM Cache Cleaner - সিস্টেম ক্লিনআপ টুল

## প্রকল্পের সারাংশ

**HWM Cache Cleaner** একটি সহজ এবং শক্তিশালী Bash স্ক্রিপ্ট যা আপনার লিনাক্স সিস্টেমের ক্যাশে পরিষ্কার করতে, অপ্রয়োজনীয় ফাইল মুছে ফেলার এবং সিস্টেমের কর্মক্ষমতা উন্নত করার জন্য একটি সুন্দর গ্রাফিক্যাল ইন্টারফেস প্রদান করে Zenity দ্বারা পরিচালিত।

এই টুলটির মাধ্যমে আপনি করতে পারেন:
- সিস্টেম ক্যাশে পরিষ্কার করা (PageCache, dentries, এবং inodes)
- অপ্রয়োজনীয় প্যাকেজ এবং পুরনো কার্নেল মুছে ফেলা
- প্যাকেজ ক্যাশে পরিষ্কার করা
- অস্থায়ী ফাইল মুছে ফেলা
- থাম্বনেইল ক্যাশে পরিষ্কার করা
- ব্যবহৃত নয় এমন ডিপেনডেন্সি মুছে ফেলা

এটি একটি সহজ এবং সুন্দর **প্রোগ্রেস বার** এবং সফলতার বার্তা সহ সম্পন্ন হয়।

## বৈশিষ্ট্য
- **গ্রাফিক্যাল ইউজার ইন্টারফেস (GUI)** Zenity দ্বারা
- **সিস্টেম ক্লিনআপ** (ক্যাশে, অস্থায়ী ফাইল, ব্যবহৃত নয় এমন ডিপেনডেন্সি)
- **প্রোগ্রেস বার** যা ক্লিনআপ প্রক্রিয়ার লাইভ স্টেটাস প্রদর্শন করে
- **সফলতা এবং ত্রুটি বার্তা** যা ব্যবহারকারীকে জানায়

---

## প্রয়োজনীয়তা

স্ক্রিপ্ট চালানোর আগে নিম্নলিখিত ডিপেনডেন্সি ইনস্টল করা থাকতে হবে:

### Zenity
Zenity গ্রাফিক্যাল ইউজার ইন্টারফেস (GUI) প্রদানের জন্য ব্যবহৃত হয়।

Zenity ইনস্টল করতে Ubuntu/Debian-ভিত্তিক সিস্টেমে এই কমান্ডটি রান করুন:

```bash
sudo apt update
sudo apt install zenity -y
```

---

## কিভাবে ইনস্টল করবেন

1. **রিপোজিটরি ক্লোন করুন**

   গিট ব্যবহার করে এই রিপোজিটরিটি ক্লোন করুন:

   ```bash
   git clone https://github.com/galib100/hwm-cache-cleaner.git
   ```

2. **স্ক্রিপ্টটি এক্সিকিউটেবল করুন**

   প্রজেক্ট ডিরেক্টরিতে যান এবং স্ক্রিপ্টটি এক্সিকিউটেবল করুন:

   ```bash
   cd hwm-cache-cleaner
   chmod +x clear_caches.sh
   ```

3. **টুলটি চালান**

   এখন আপনি সরাসরি অ্যাপ্লিকেশন মেনু থেকে বা নিম্নলিখিত কমান্ডটি চালিয়ে টুলটি চালাতে পারেন:

   ```bash
   sudo ./clear_caches.sh
   ```

   **গুরুত্বপূর্ণ নোট:**
   - স্ক্রিপ্টটি `sudo` ব্যবহার করে এমন কাজগুলি সম্পাদন করে যা রুট অনুমতির প্রয়োজন (যেমন ক্যাশে পরিষ্কার করা, অপ্রয়োজনীয় প্যাকেজ মুছে ফেলা ইত্যাদি)।
   - স্ক্রিপ্ট চালানোর সময় আপনাকে পাসওয়ার্ড প্রদান করতে বলা হবে। নিশ্চিত করুন যে আপনার `sudo` অনুমতি রয়েছে।

---

## ব্যবহার কিভাবে করবেন

1. স্ক্রিপ্টটি চালান আইকন ক্লিক করে অথবা টার্মিনাল থেকে চালিয়ে।
2. **প্রোগ্রেস বার** ক্লিনআপ প্রক্রিয়ার লাইভ স্টেটাস প্রদর্শন করবে।
3. সম্পন্ন হলে একটি **সফলতার বার্তা** প্রদর্শিত হবে।

---



# HWM Cache Cleaner - System Cleanup Tool

## Project Overview

**HWM Cache Cleaner** is a simple yet powerful Bash script to clean your system caches, remove unnecessary files, and improve system performance with a beautiful graphical interface powered by Zenity.

With this tool, you can:
- Clear system caches (PageCache, dentries, and inodes)
- Remove unnecessary packages and old kernels
- Clean package cache
- Remove temporary files
- Clear thumbnail cache
- Remove unused dependencies

All of this is done with an intuitive progress bar and a success message upon completion.

## Features
- **Graphical User Interface (GUI)** with Zenity
- **System Cleanup** (cache, temp files, unused dependencies)
- **Progress bar** showing the real-time progress of the cleanup
- **Success and error messages** to inform the user

---

## Requirements

Before running the script, ensure the following dependencies are installed:

### Zenity
Zenity is used to provide a GUI for the script.

To install Zenity on Ubuntu/Debian-based systems, run:

```bash
sudo apt update
sudo apt install zenity -y
```

---

## How to Install

1. **Clone the repository**

   Clone this repository using Git:

   ```bash
   git clone https://github.com/galib100/hwm-cache-cleaner.git
   ```

2. **Make the script executable**

   Navigate to the project directory and make the script executable:

   ```bash
   cd hwm-cache-cleaner
   chmod +x clear_caches.sh
   ```

3. **Run the tool**

   After making the script executable, you can run it with the following command:

   ```bash
   ./clear_caches.sh
   ```

   **Important Note:**
   - The script uses `sudo` to perform actions that require root privileges (such as clearing caches, removing unnecessary packages, etc.).
   - You will be prompted to enter your password during execution. Make sure you have `sudo` privileges.

   Alternatively, you can create a shortcut or launch the script from your applications.

---

## How to Use

1. Run the script by clicking on the launcher icon or executing it from the terminal.
2. The **progress bar** will show the live status of the cleanup process.
3. Upon completion, a **success message** will be displayed.

---
