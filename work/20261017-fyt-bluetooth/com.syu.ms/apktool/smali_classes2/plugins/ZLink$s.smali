.class public Lplugins/ZLink$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugins/ZLink;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lplugins/ZLink;


# direct methods
.method public constructor <init>(Lplugins/ZLink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lplugins/ZLink$s;->a:Lplugins/ZLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lplugins/ZLink$s;->a:Lplugins/ZLink;

    iget-object v1, v0, Lplugins/ZLink;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lplugins/ZLink;->a0(Ljava/lang/String;)V

    return-void
.end method
