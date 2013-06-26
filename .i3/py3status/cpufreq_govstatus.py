class Py3status:
    """
    Show the CPU frequency for all CPUs 
    """
    def cpufreq(self, json, i3status_config):
        """
        This method will return an empty text message, so it will NOT be displayed.
        If you want something displayed you should write something in the 'full_text' key of your response.
        See the i3bar protocol spec for more information:
            http://i3wm.org/docs/i3bar-protocol.html
        """

        with open ("/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor", "r") as cpu0:
            cpu0_gov=cpu0.readline().strip()
        with open ("/sys/devices/system/cpu/cpu1/cpufreq/scaling_governor", "r") as cpu1:
            cpu1_gov=cpu1.readline().strip()
        with open ("/sys/devices/system/cpu/cpu2/cpufreq/scaling_governor", "r") as cpu2:
            cpu2_gov=cpu2.readline().strip()
        with open ("/sys/devices/system/cpu/cpu3/cpufreq/scaling_governor", "r") as cpu3:
            cpu3_gov=cpu3.readline().strip()

        cpu_gov = "CPU: %s" % (cpu0_gov)

#        if cpu0_gov == 'powersave':
#            response.update({'color': '#00ff00'})
#        elif cpu0_gov == 'ondemand':
#            response.update({'color': '#ffff00'})
#        elif cpu0_gov == 'performance':
#            response.update({'color': '#ff0000'})

        response = {'full_text' : cpu_gov, 'name' : 'cpufreq_governor'}

        return (0, response)
