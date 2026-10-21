.class public final enum Lcom/android/internal/telephony/PhoneConstants$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/PhoneConstants$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/PhoneConstants$State;

.field public static final enum IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

.field public static final enum OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

.field public static final enum RINGING:Lcom/android/internal/telephony/PhoneConstants$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$State;

    .line 2
    .line 3
    const-string v1, "IDLE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneConstants$State;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 10
    .line 11
    new-instance v1, Lcom/android/internal/telephony/PhoneConstants$State;

    .line 12
    .line 13
    const-string v3, "RINGING"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/PhoneConstants$State;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 20
    .line 21
    new-instance v3, Lcom/android/internal/telephony/PhoneConstants$State;

    .line 22
    .line 23
    const-string v5, "OFFHOOK"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/PhoneConstants$State;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Lcom/android/internal/telephony/PhoneConstants$State;

    .line 33
    .line 34
    aput-object v0, v5, v2

    .line 35
    .line 36
    aput-object v1, v5, v4

    .line 37
    .line 38
    aput-object v3, v5, v6

    .line 39
    .line 40
    sput-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$State;

    .line 41
    .line 42
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/PhoneConstants$State;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/PhoneConstants$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method
