.class public Landroid/provider/SettingsStringUtil$SettingStringHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SettingsStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingStringHelper"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mSettingName:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 5
    .line 6
    iput p3, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mUserId:I

    .line 7
    .line 8
    iput-object p2, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mSettingName:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public modify(Ljava/util/function/Function;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/lowpan/b;->f(Ljava/util/function/Function;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public read()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mSettingName:Ljava/lang/String;

    iget v2, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mSettingName:Ljava/lang/String;

    iget v2, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
