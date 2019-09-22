
package vehiclesalesmanagement;

import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JComponent;
import javax.swing.JLabel;
import javax.swing.Timer;
import net.java.balloontip.BalloonTip;
import net.java.balloontip.styles.BalloonTipStyle;
import net.java.balloontip.styles.MinimalBalloonStyle;
import net.java.balloontip.utils.FadingUtils;

/**
 *
 * @author Inspiron 15
 */
public class BalloonTips {

    public static void viewToolTip(JComponent ballonComponent, String txt) {
        BalloonTipStyle style = new MinimalBalloonStyle(Color.LIGHT_GRAY.brighter(), 23);
        JLabel include = new JLabel(txt, 10);
        final BalloonTip tip = new BalloonTip(ballonComponent,
                include,
                style,
                BalloonTip.Orientation.LEFT_ABOVE,
                BalloonTip.AttachLocation.NORTH,
                20, 10,
                false);
        tip.setOpacity(5.0F);
        FadingUtils.fadeInBalloon(tip, null, 12000, 2000);
        new Timer(100, new ActionListener() {
            int sec = 6;

            @Override
            public void actionPerformed(ActionEvent e) {
                --sec;
                if (sec == 0) {
                    FadingUtils.fadeOutBalloon(tip, null, 12000, 200);
                }
            }
        }).start();
    }
}
