import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back),
          ),
          title: const Text("About"),
          centerTitle: true),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text("Penny Path - Expense Tracker App"
                  "About Page"
                  "Welcome to **Penny Path**, your go-to expense tracker designed to empower you in managing your finances effectively. Whether you're budgeting for a specific goal or simply want to gain insights into your spending habits, Penny Path is here to guide you on your financial journey.\n**Key Features:**\n1. **Set Your Budget:**\n- Define your financial boundaries and let Penny Path keep you on track. Set a budget for each spending category to ensure you stay within your means.\n2. **Real-Time Balance:**\n- Instantly see how much money is left in your budget at a glance. Penny Path provides a real-time snapshot of your financial status, keeping you informed and in control.\n3. **Graphical Insights:**\n- Dive into interactive graphs that visually represent your expenses. Compare spending across months or days to identify trends and make informed financial decisions.\n**Explore the App:**\n- **Dashboard:**\n- Get a comprehensive overview of your income, expenses, and current balance.\n- **Transaction Entry:**\n- Manually input your income and expenses with details like date, amount, category, and description.\n- **Expense and Income Categories:**\n- Customize and manage categories to tailor Penny Path to your unique financial landscape.\n- **Transaction History:**\n- Review and edit past transactions with ease through a list or calendar view.\n- **Budgeting:**\n- Set and manage budgets for different categories, with visual representations of spending against budget limits.\n- **Reports and Analytics:**\n- Generate graphical reports summarizing spending patterns and offering valuable insights.\n- **Settings:**\n- Personalize the app based on your preferences, from currency settings to notification preferences.\n- **Profile:**\n- Access your user profile, manage account information, and make necessary changes.\n- **Sync/Backup:**\n- Ensure data security and accessibility by syncing across devices or backing up your data to the cloud.\n**Currency Exchange:**\n- For international travelers, seamlessly convert and track expenses in different currencies.\n- **Reminders/Alerts:**\n- Set reminders for upcoming bills or expenses to stay ahead of your financial commitments.\n- **Help/FAQ:**\n- Find comprehensive information on app usage, troubleshooting tips, and answers to frequently asked questions.\n- **Feedback:**\n- Share your thoughts, report issues, or suggest improvements to help us make Penny Path even better.\n- **Logout:**\n- Log out securely whenever needed to ensure the privacy of your financial data.\nPenny Path is designed with your financial well-being in mind. Take control of your expenses, track your money, and embark on a journey towards financial success with Penny Path."),
            ],
          ),
        ),
      ),
    );
  }
}
