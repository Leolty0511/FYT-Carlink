.class public final enum Landroid/telephony/SmsMessage$MessageClass;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/telephony/SmsMessage$MessageClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/SmsMessage$MessageClass;

.field public static final enum CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

.field public static final enum CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

.field public static final enum CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

.field public static final enum CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

.field public static final enum UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Landroid/telephony/SmsMessage$MessageClass;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroid/telephony/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    .line 10
    .line 11
    new-instance v1, Landroid/telephony/SmsMessage$MessageClass;

    .line 12
    .line 13
    const-string v3, "CLASS_0"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Landroid/telephony/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    .line 20
    .line 21
    new-instance v3, Landroid/telephony/SmsMessage$MessageClass;

    .line 22
    .line 23
    const-string v5, "CLASS_1"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Landroid/telephony/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    .line 30
    .line 31
    new-instance v5, Landroid/telephony/SmsMessage$MessageClass;

    .line 32
    .line 33
    const-string v7, "CLASS_2"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Landroid/telephony/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    .line 40
    .line 41
    new-instance v7, Landroid/telephony/SmsMessage$MessageClass;

    .line 42
    .line 43
    const-string v9, "CLASS_3"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Landroid/telephony/SmsMessage$MessageClass;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    .line 50
    .line 51
    const/4 v9, 0x5

    .line 52
    new-array v9, v9, [Landroid/telephony/SmsMessage$MessageClass;

    .line 53
    .line 54
    aput-object v0, v9, v2

    .line 55
    .line 56
    aput-object v1, v9, v4

    .line 57
    .line 58
    aput-object v3, v9, v6

    .line 59
    .line 60
    aput-object v5, v9, v8

    .line 61
    .line 62
    aput-object v7, v9, v10

    .line 63
    .line 64
    sput-object v9, Landroid/telephony/SmsMessage$MessageClass;->$VALUES:[Landroid/telephony/SmsMessage$MessageClass;

    .line 65
    .line 66
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    const-class v0, Landroid/telephony/SmsMessage$MessageClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/telephony/SmsMessage$MessageClass;

    return-object p0
.end method

.method public static values()[Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->$VALUES:[Landroid/telephony/SmsMessage$MessageClass;

    invoke-virtual {v0}, [Landroid/telephony/SmsMessage$MessageClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method
