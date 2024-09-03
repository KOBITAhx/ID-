local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ServerIdLabel = Instance.new("TextLabel")
local CopyButton = Instance.new("TextButton")


ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Position = UDim2.new(0.5, -100, 0.5, -50)
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.AnchorPoint = Vector2.new(0.5, 0.5)

Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Server ID"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20

ServerIdLabel.Parent = Frame
ServerIdLabel.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ServerIdLabel.Position = UDim2.new(0, 0, 0.3, 0)
ServerIdLabel.Size = UDim2.new(1, 0, 0.4, 0)
ServerIdLabel.Font = Enum.Font.SourceSans
ServerIdLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
ServerIdLabel.TextSize = 16
ServerIdLabel.Text = game.JobId 
ServerIdLabel.TextWrapped = true

CopyButton.Parent = Frame
CopyButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
CopyButton.Position = UDim2.new(0.5, -50, 0.8, 0)
CopyButton.Size = UDim2.new(0, 100, 0, 25)
CopyButton.Font = Enum.Font.SourceSansBold
CopyButton.Text = "Copiar ID"
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.TextSize = 18


CopyButton.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(game.JobId) 
        CopyButton.Text = "Copiado!"
        wait(1.5)
        CopyButton.Text = "Copiar ID"
    else
        CopyButton.Text = "Función no soportada"
    end
end)
