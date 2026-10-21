.class public Lz/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz/i;->f([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz/i;


# direct methods
.method public constructor <init>(Lz/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz/i$c;->a:Lz/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "com.syu.mcu.update"

    .line 1
    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    return-void
.end method
