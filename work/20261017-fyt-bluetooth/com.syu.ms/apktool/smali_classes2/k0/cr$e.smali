.class public Lk0/cr$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/cr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/cr;


# direct methods
.method public constructor <init>(Lk0/cr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/cr$e;->a:Lk0/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/cr$e;->a:Lk0/cr;

    invoke-static {v0}, Lk0/cr;->r3(Lk0/cr;)V

    return-void
.end method
