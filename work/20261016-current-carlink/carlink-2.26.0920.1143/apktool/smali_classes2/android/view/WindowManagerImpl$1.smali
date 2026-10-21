.class Landroid/view/WindowManagerImpl$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowManagerImpl;->requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/WindowManagerImpl;

.field final synthetic val$receiver:Landroid/view/WindowManager$KeyboardShortcutsReceiver;


# direct methods
.method public constructor <init>(Landroid/view/WindowManagerImpl;Landroid/view/WindowManager$KeyboardShortcutsReceiver;)V
    .locals 0

    iput-object p1, p0, Landroid/view/WindowManagerImpl$1;->this$0:Landroid/view/WindowManagerImpl;

    iput-object p2, p0, Landroid/view/WindowManagerImpl$1;->val$receiver:Landroid/view/WindowManager$KeyboardShortcutsReceiver;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string/jumbo p1, "shortcuts_array"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p2, p0, Landroid/view/WindowManagerImpl$1;->val$receiver:Landroid/view/WindowManager$KeyboardShortcutsReceiver;

    .line 9
    .line 10
    invoke-interface {p2, p1}, Landroid/view/WindowManager$KeyboardShortcutsReceiver;->onKeyboardShortcutsReceived(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
