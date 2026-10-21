.class public Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VisualVoicemailSmsFilterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mClientPrefix:Ljava/lang/String;

.field private mDestinationPort:I

.field private mOriginatingNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "//VVM"

    .line 5
    .line 6
    iput-object v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mClientPrefix:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->DEFAULT_ORIGINATING_NUMBERS:Ljava/util/List;

    .line 9
    .line 10
    iput-object v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mOriginatingNumbers:Ljava/util/List;

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mDestinationPort:I

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic access$100(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mClientPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mOriginatingNumbers:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mDestinationPort:I

    return p0
.end method


# virtual methods
.method public build()Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .locals 2

    new-instance v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/VisualVoicemailSmsFilterSettings;-><init>(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;Landroid/telephony/VisualVoicemailSmsFilterSettings$1;)V

    return-object v0
.end method

.method public setClientPrefix(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mClientPrefix:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "Client prefix cannot be null"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setDestinationPort(I)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mDestinationPort:I

    return-object p0
.end method

.method public setOriginatingNumbers(Ljava/util/List;)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mOriginatingNumbers:Ljava/util/List;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "Originating numbers cannot be null"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method
