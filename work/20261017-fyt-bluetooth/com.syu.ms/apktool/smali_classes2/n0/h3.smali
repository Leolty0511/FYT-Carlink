.class public Ln0/h3;
.super Ln0/h2;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln0/h2;-><init>()V

    return-void
.end method


# virtual methods
.method public L3()V
    .locals 1

    const-string v0, "KAIQY"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x123

    .line 2
    sput v0, Lm1/a;->d:I

    return-void
.end method
