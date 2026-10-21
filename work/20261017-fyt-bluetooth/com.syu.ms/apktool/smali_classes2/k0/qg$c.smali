.class public Lk0/qg$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/qg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/qg;


# direct methods
.method public constructor <init>(Lk0/qg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/qg$c;->a:Lk0/qg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/qg$c;->a:Lk0/qg;

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lk0/qg;->f3(Lk0/qg;Ljava/lang/String;)V

    return-void
.end method
