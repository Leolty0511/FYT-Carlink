.class public Lg/b$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/b$f;->onUEvent(Landroid/os/UEventObserver$UEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/b$f;


# direct methods
.method public constructor <init>(Lg/b$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/b$f$a;->a:Lg/b$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    sget-object v0, Le1/a;->b:Le1/l;

    invoke-virtual {v0}, Le1/l;->f()V

    return-void
.end method
