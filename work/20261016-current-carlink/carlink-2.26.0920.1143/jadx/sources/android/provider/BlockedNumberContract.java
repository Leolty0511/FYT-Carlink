package android.provider;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class BlockedNumberContract {
    public static final String AUTHORITY = "com.android.blockednumber";
    public static final Uri AUTHORITY_URI = Uri.parse("content://com.android.blockednumber");
    public static final String METHOD_CAN_CURRENT_USER_BLOCK_NUMBERS = "can_current_user_block_numbers";
    public static final String METHOD_IS_BLOCKED = "is_blocked";
    public static final String METHOD_UNBLOCK = "unblock";
    public static final String RES_CAN_BLOCK_NUMBERS = "can_block";
    public static final String RES_NUMBER_IS_BLOCKED = "blocked";
    public static final String RES_NUM_ROWS_DELETED = "num_deleted";

    public static class BlockedNumbers {
        public static final String BLOCK_TYPE = "block_type";
        public static final String COLUMN_E164_NUMBER = "e164_number";
        public static final String COLUMN_ID = "_id";
        public static final String COLUMN_ORIGINAL_NUMBER = "original_number";
        public static final String CONTENT_ITEM_TYPE = "vnd.android.cursor.item/blocked_number";
        public static final String CONTENT_TYPE = "vnd.android.cursor.dir/blocked_number";
        public static final Uri CONTENT_URI = Uri.withAppendedPath(BlockedNumberContract.AUTHORITY_URI, BlockedNumberContract.RES_NUMBER_IS_BLOCKED);
        public static final String MIN_MATCH = "min_match";
        public static final String NAME = "name";

        private BlockedNumbers() {
        }
    }

    public static class SystemContract {
        public static final String ACTION_BLOCK_SUPPRESSION_STATE_CHANGED = "android.provider.action.BLOCK_SUPPRESSION_STATE_CHANGED";
        public static final String METHOD_END_BLOCK_SUPPRESSION = "end_block_suppression";
        public static final String METHOD_GET_BLOCK_SUPPRESSION_STATUS = "get_block_suppression_status";
        public static final String METHOD_NOTIFY_EMERGENCY_CONTACT = "notify_emergency_contact";
        public static final String METHOD_SHOULD_SYSTEM_BLOCK_NUMBER = "should_system_block_number";
        public static final String RES_BLOCKING_SUPPRESSED_UNTIL_TIMESTAMP = "blocking_suppressed_until_timestamp";
        public static final String RES_IS_BLOCKING_SUPPRESSED = "blocking_suppressed";

        public static class BlockSuppressionStatus {
            public final boolean isSuppressed;
            public final long untilTimestampMillis;

            public BlockSuppressionStatus(boolean z2, long j2) {
                this.isSuppressed = z2;
                this.untilTimestampMillis = j2;
            }
        }

        public static void endBlockSuppression(Context context) {
            context.getContentResolver().call(BlockedNumberContract.AUTHORITY_URI, METHOD_END_BLOCK_SUPPRESSION, null, null);
        }

        public static BlockSuppressionStatus getBlockSuppressionStatus(Context context) {
            Bundle bundleCall = context.getContentResolver().call(BlockedNumberContract.AUTHORITY_URI, METHOD_GET_BLOCK_SUPPRESSION_STATUS, null, null);
            return bundleCall == null ? new BlockSuppressionStatus(false, 0L) : new BlockSuppressionStatus(bundleCall.getBoolean(RES_IS_BLOCKING_SUPPRESSED, false), bundleCall.getLong(RES_BLOCKING_SUPPRESSED_UNTIL_TIMESTAMP, 0L));
        }

        public static void notifyEmergencyContact(Context context) {
            context.getContentResolver().call(BlockedNumberContract.AUTHORITY_URI, METHOD_NOTIFY_EMERGENCY_CONTACT, null, null);
        }

        public static boolean shouldSystemBlockNumber(Context context, String str) {
            Bundle bundleCall = context.getContentResolver().call(BlockedNumberContract.AUTHORITY_URI, METHOD_SHOULD_SYSTEM_BLOCK_NUMBER, str, null);
            return bundleCall != null && bundleCall.getBoolean(BlockedNumberContract.RES_NUMBER_IS_BLOCKED, false);
        }
    }

    private BlockedNumberContract() {
    }

    public static boolean canCurrentUserBlockNumbers(Context context) {
        Bundle bundleCall = context.getContentResolver().call(AUTHORITY_URI, METHOD_CAN_CURRENT_USER_BLOCK_NUMBERS, null, null);
        return bundleCall != null && bundleCall.getBoolean(RES_CAN_BLOCK_NUMBERS, false);
    }

    public static boolean isBlocked(Context context, String str) {
        Bundle bundleCall = context.getContentResolver().call(AUTHORITY_URI, METHOD_IS_BLOCKED, str, null);
        return bundleCall != null && bundleCall.getBoolean(RES_NUMBER_IS_BLOCKED, false);
    }

    public static int unblock(Context context, String str) {
        return context.getContentResolver().call(AUTHORITY_URI, METHOD_UNBLOCK, str, null).getInt(RES_NUM_ROWS_DELETED, 0);
    }
}
