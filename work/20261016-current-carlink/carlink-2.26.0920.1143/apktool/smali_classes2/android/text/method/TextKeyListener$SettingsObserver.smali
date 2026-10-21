.class Landroid/text/method/TextKeyListener$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/TextKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/method/TextKeyListener;


# direct methods
.method public constructor <init>(Landroid/text/method/TextKeyListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    .line 2
    .line 3
    new-instance p1, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/method/TextKeyListener;->access$000(Landroid/text/method/TextKeyListener;)Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/text/method/TextKeyListener;->access$000(Landroid/text/method/TextKeyListener;)Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/content/ContentResolver;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    .line 25
    .line 26
    invoke-static {p1, v0}, Landroid/text/method/TextKeyListener;->access$102(Landroid/text/method/TextKeyListener;Z)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    .line 31
    .line 32
    invoke-static {v0, p1}, Landroid/text/method/TextKeyListener;->access$200(Landroid/text/method/TextKeyListener;Landroid/content/ContentResolver;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    .line 37
    .line 38
    invoke-static {p1, v0}, Landroid/text/method/TextKeyListener;->access$102(Landroid/text/method/TextKeyListener;Z)Z

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method
