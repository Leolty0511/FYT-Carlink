.class public Ln0/g4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/g4;->X2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/g4;


# direct methods
.method public constructor <init>(Ln0/g4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/g4$b;->a:Ln0/g4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    const-string v0, "com.roadrover.voiceassistant"

    const-string v1, "com.roadrover.voiceassistant.activity.HelloActivity"

    .line 1
    invoke-static {v0, v1}, Lo1/u;->H0(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method
